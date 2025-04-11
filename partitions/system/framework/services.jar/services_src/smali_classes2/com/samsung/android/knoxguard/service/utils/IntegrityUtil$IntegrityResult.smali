.class public Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;
.super Ljava/lang/Object;
.source "IntegrityUtil.java"


# instance fields
.field public enabled:Z

.field public enabledAdminReceiver:Z

.field public enabledAlarmService:Z

.field public enabledKGProvider:Z

.field public enabledKgIntentService:Z

.field public enabledSystemIntentReceiver:Z

.field public enabledSystemIntentReceiverService:Z

.field public isOk:Z

.field public validSignature:Z

.field public validVersion:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->isOk:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->validSignature:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->validVersion:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAdminReceiver:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiver:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledSystemIntentReceiverService:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKgIntentService:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledAlarmService:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil$IntegrityResult;->enabledKGProvider:Z

    return-void
.end method
