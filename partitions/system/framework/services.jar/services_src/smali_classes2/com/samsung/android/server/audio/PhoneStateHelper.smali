.class public Lcom/samsung/android/server/audio/PhoneStateHelper;
.super Ljava/lang/Object;
.source "PhoneStateHelper.java"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/PhoneStateHelper;


# instance fields
.field public mIs2GTDMANetwork:Z

.field public mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field public mRilState:I

.field public mSimCount:I

.field public mSpecifiedTm:[Landroid/telephony/TelephonyManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIs2GTDMANetwork(Lcom/samsung/android/server/audio/PhoneStateHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRilState(Lcom/samsung/android/server/audio/PhoneStateHelper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIs2GTDMANetwork(Lcom/samsung/android/server/audio/PhoneStateHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRilState(Lcom/samsung/android/server/audio/PhoneStateHelper;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mis2GTDMANetwork(Lcom/samsung/android/server/audio/PhoneStateHelper;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/PhoneStateHelper;->is2GTDMANetwork(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/PhoneStateHelper;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/audio/PhoneStateHelper;->sInstance:Lcom/samsung/android/server/audio/PhoneStateHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/PhoneStateHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/server/audio/PhoneStateHelper;->sInstance:Lcom/samsung/android/server/audio/PhoneStateHelper;

    :cond_0
    sget-object p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->sInstance:Lcom/samsung/android/server/audio/PhoneStateHelper;

    return-object p0
.end method


# virtual methods
.method public final getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/PhoneStateHelper$1;-><init>(Lcom/samsung/android/server/audio/PhoneStateHelper;)V

    return-object v0
.end method

.method public final is2GTDMANetwork(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public registerPhoneStateListener()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    const-string v1, "AS.PhoneStateHelper"

    if-nez v0, :cond_0

    const-string p0, "do not register PhoneStateListener on NO_SIM state"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-array v2, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-array v0, v0, [Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    if-ge v2, v3, :cond_2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    aget v3, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerPhoneStateListener mSimCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/PhoneStateHelper;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v2

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public unregisterPhoneStateListener()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call unregisterPhoneStateListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.PhoneStateHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
