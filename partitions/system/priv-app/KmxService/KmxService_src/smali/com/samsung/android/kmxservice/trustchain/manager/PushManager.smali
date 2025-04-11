.class public final Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/trustchain/manager/PushManager$PushConstants;
    }
.end annotation


# static fields
.field public static final INTENT_DATA_KEY_PUSH_TOKEN:Ljava/lang/String; = "PUSH_TOKEN"

.field public static final INTENT_DATA_KEY_PUSH_TYPE:Ljava/lang/String; = "PUSH_TYPE"

.field public static final INTENT_SMP_INFO_CHANGED:Ljava/lang/String; = "SMP.pushInfoUpdated"

.field public static final KEY_PUSH_MESSAGE_CATEGORY:Ljava/lang/String; = "category"

.field public static final PREF_KEY_PUSH_REGISTERED:Ljava/lang/String; = "PUSH_REGISTERED"

.field public static final PUSH_EVENT_CLIENT_WAKEUP_MESSAGE:Ljava/lang/String; = "MessageClientWakeup"

.field public static final PUSH_EVENT_FABRIC_UPDATE:Ljava/lang/String; = "FabricUpdate"

.field public static final PUSH_EVENT_L3_MEMBER_JOIN:Ljava/lang/String; = "L3Onboarding"

.field public static final PUSH_EVENT_L3_MEMBER_UPDATE:Ljava/lang/String; = "L3Updated"

.field public static final PUSH_EVENT_L3_MEMBER_WITHDRAW:Ljava/lang/String; = "L3Withdrawal"

.field public static final PUSH_EVENT_MEMBER_JOIN:Ljava/lang/String; = "FabricNewMemberJoin"

.field public static final PUSH_EVENT_MEMBER_WITHDRAW:Ljava/lang/String; = "FabricMemberWithdrawal"

.field static final TAG:Ljava/lang/String; = "TrustChain::PushManager"

.field public static final UPDATE_SMP_COMMAND:Ljava/lang/String; = "Update_SMP_Details"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->lambda$fetchPushInfo$2(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->lambda$initializeSMP$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->lambda$fetchPushInfo$1(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static fetchPushInfo(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/d;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, v0}, Lh3/a;->t(Landroid/content/Context;Lcom/samsung/android/kmxservice/trustchain/manager/d;)V

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/d;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, v0}, Lh3/a;->u(Landroid/content/Context;Lcom/samsung/android/kmxservice/trustchain/manager/d;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$NullArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TrustChain::PushManager"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getPushToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "PUSH_TOKEN"

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPushType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "PUSH_TYPE"

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initializeSMP(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/profileinstaller/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/profileinstaller/e;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static synthetic lambda$fetchPushInfo$1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "PUSH_TOKEN"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "smpPushToken : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrustChain::PushManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$fetchPushInfo$2(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "PUSH_TYPE"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "smpPushType : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrustChain::PushManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static lambda$initializeSMP$0(Landroid/content/Context;)V
    .locals 7

    const-string v0, "PUSH_REGISTERED"

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/PreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "TrustChain::PushManager"

    if-nez v0, :cond_1

    const-string v0, "Initializing SMP for kmx trustchain service"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->FCM_ONLY_MODE:Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    new-instance v2, Landroidx/appcompat/widget/i4;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/i4;-><init>(I)V

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/appcompat/widget/i4;->b:Z

    const-string v4, "160b720ef235b582"

    iput-object v4, v2, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    iput-boolean v3, v2, Landroidx/appcompat/widget/i4;->c:Z

    invoke-static {}, Lv4/g;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Initializing firebase application"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ln2/l;

    invoke-direct {v3}, Ln2/l;-><init>()V

    const-string v4, "1:563924476427:android:526031aec2c37e77c99d0e"

    const-string v5, "ApplicationId must be set."

    invoke-static {v5, v4}, Lva/n;->g(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Ln2/l;->a:Ljava/lang/Object;

    const-string v4, "AIzaSyB***FCM_KEY***ZP9XZHM"

    const-string v5, "***FCM_KEY***"

    const-string v6, "xSrICpNicywOCaWJEtcggFm_W"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ApiKey must be set."

    invoke-static {v5, v4}, Lva/n;->g(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Ln2/l;->d:Ljava/lang/Object;

    const-string v4, "563924476427-d55i0p9rmm8qj1bschhebhen35gud31d.apps.googleusercontent.com"

    iput-object v4, v3, Ln2/l;->b:Ljava/lang/Object;

    const-string v4, "563924476427"

    iput-object v4, v3, Ln2/l;->c:Ljava/lang/Object;

    const-string v4, "samsung-kmxservice.appspot.com"

    iput-object v4, v3, Ln2/l;->f:Ljava/lang/Object;

    const-string v4, "samsung-kmxservice"

    iput-object v4, v3, Ln2/l;->g:Ljava/lang/Object;

    invoke-virtual {v3}, Ln2/l;->g()Lv4/i;

    move-result-object v3

    invoke-static {p0, v3}, Lv4/g;->f(Landroid/content/Context;Lv4/i;)Lv4/g;

    :cond_0
    invoke-static {p0, v0, v2}, Lh3/a;->w(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;Landroidx/appcompat/widget/i4;)V

    const-string p0, "SMP Init completed"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$NullArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "Fetching Push info as SMP is already initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->fetchPushInfo(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
