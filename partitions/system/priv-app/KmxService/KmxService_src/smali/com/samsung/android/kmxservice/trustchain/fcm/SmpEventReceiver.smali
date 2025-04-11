.class public Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::SmpEventReceiver"


# instance fields
.field private final mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

.field private final mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver$1;-><init>(Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver;->mChainServiceCallback:Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;-><init>(Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver;)Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    return-object p0
.end method

.method private detailsUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    const-string v1, "Update_SMP_Details"

    invoke-virtual {v0, v1}, Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;->setArgument(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver;->mChainServiceConnection:Lcom/samsung/android/kmxservice/trustchain/ChainServiceConnection;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainServiceBindingUtil;->bindChainService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private extractPushToken(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6

    const-string v0, "push_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "push_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "TrustChain::SmpEventReceiver"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "PUSH_TOKEN"

    invoke-static {p2, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PUSH_TYPE"

    invoke-static {p2, v4}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "pushToken and pushType is same"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v3, "pushToken and/or pushType updated"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, v2, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v4, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver;->detailsUpdated()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "pushToken and/or pushType is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "TrustChain::SmpEventReceiver"

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "smp event received - action : "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.samsung.android.sdk.smp.pushRegistrationResult"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "com.samsung.android.sdk.smp.smpInitializeResult"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "com.samsung.android.sdk.smp.smpInitResult"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "com.samsung.android.sdk.smp.pushTokenChanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    const-string v1, "SMP result "

    const-string v2, "is_success"

    packed-switch v4, :pswitch_data_0

    const-string p0, "Unhandled action...."

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Push registration success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver;->extractPushToken(Landroid/content/Intent;Landroid/content/Context;)V

    const-string p0, "PUSH_REGISTERED"

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0, p2}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_5
    const-string p0, "error_message"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "error_message : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_2
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/kmxservice/trustchain/fcm/SmpEventReceiver;->extractPushToken(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    const-string p0, "Invalid parameter intent or action is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x466b2e9f -> :sswitch_3
        -0x3b7d0be9 -> :sswitch_2
        -0x112344e9 -> :sswitch_1
        0x5ea8349c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
