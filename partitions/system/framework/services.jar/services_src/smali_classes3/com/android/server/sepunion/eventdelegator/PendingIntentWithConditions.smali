.class public Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;
.super Ljava/lang/Object;
.source "PendingIntentWithConditions.java"


# instance fields
.field public mConditions:Ljava/util/ArrayList;

.field public mFlag:I

.field public mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    .line 15
    iput p2, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mFlag:I

    .line 16
    iput-object p3, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mConditions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 33
    instance-of v0, p1, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    if-eqz v0, :cond_0

    .line 34
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    check-cast p1, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    iget-object p1, p1, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getConditions()Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mConditions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getFlag()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mFlag:I

    return p0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method
