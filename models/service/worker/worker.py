import os
import time
from pytz import utc

from apscheduler.schedulers.background import BackgroundScheduler
from apscheduler.triggers.cron import CronTrigger
from defines import constant
from jobs import recommend_job


def run():
    scheduler = BackgroundScheduler(timezone=utc)
    scheduler.add_job(recommend_job.recommend,
                      CronTrigger.from_crontab(constant.CRON_STRING))

    scheduler.start()
    print('Press Ctrl+{0} to exit'.format('Break' if os.name == 'nt' else 'C'))

    try:
        while True:
            time.sleep(2)
    except (KeyboardInterrupt, SystemExit):
        scheduler.shutdown()
