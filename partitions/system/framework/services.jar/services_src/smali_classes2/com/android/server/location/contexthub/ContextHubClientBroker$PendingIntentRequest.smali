.class public Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;
.super Ljava/lang/Object;
.source "ContextHubClientBroker.java"


# instance fields
.field public mNanoAppId:J

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mValid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;J)V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    .line 306
    iput-wide p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    const/4 p1, 0x1

    .line 307
    iput-boolean p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public getNanoAppId()J
    .locals 2

    .line 311
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mNanoAppId:J

    return-wide v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public hasPendingIntent()Z
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValid()Z
    .locals 0

    .line 327
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->mValid:Z

    return p0
.end method
