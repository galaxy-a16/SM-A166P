.class public Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;
.super Ljava/lang/Object;
.source "IntegritySeUtil.java"


# instance fields
.field public enabled:Z

.field public enabledAdminReceiver:Z

.field public enabledAlarmService:Z

.field public enabledKGProvider:Z

.field public enabledKgEventService:Z

.field public enabledSelfUpdateReceiver:Z

.field public enabledSystemIntentReceiver:Z

.field public isOk:Z

.field public validSignature:Z

.field public validVersion:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validSignature:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validVersion:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    iput-boolean v0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z

    return-void
.end method
