import os
import time
from pytz import utc

from apscheduler.schedulers.background import BackgroundScheduler
from apscheduler.triggers.cron import CronTrigger
from defines import constant
from jobs import crawl_gold_price_domestic
from jobs import crawl_gold_price_global
from jobs import crawl_oil_price_global
from jobs import crawl_oil_price_domestic


def run():
    scheduler = BackgroundScheduler(timezone=utc)

    scheduler.add_job(crawl_gold_price_domestic.crawl,
                      CronTrigger.from_crontab(constant.GOLD_DOMESTIC.cron))
    scheduler.add_job(crawl_gold_price_global.crawl,
                      CronTrigger.from_crontab(constant.GOLD_GLOBAL.cron))

    scheduler.add_job(crawl_oil_price_domestic.crawl,
                      CronTrigger.from_crontab(constant.OIL_DOMESTIC.cron))
    scheduler.add_job(crawl_oil_price_global.crawl,
                      CronTrigger.from_crontab(constant.OIL_GLOBAL.cron))

    scheduler.start()
    print('Press Ctrl+{0} to exit'.format('Break' if os.name == 'nt' else 'C'))

    try:
        while True:
            time.sleep(2)
    except (KeyboardInterrupt, SystemExit):
        scheduler.shutdown()
