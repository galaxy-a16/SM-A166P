.class public Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountDelegateActivity;
.super Ld/q;
.source "SourceFile"


# static fields
.field private static final INTENT_SAMSUNG_ACCOUNT_CONFIRM_PASSWORD:Ljava/lang/String; = "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

.field private static final INTENT_SAMSUNG_ACCOUNT_REQUEST_ACCESSTOKEN:Ljava/lang/String; = "com.msc.action.samsungaccount.REQUEST_ACCESSTOKEN"

.field private static final TAG:Ljava/lang/String; = "KMX|SamsungAccountDelegateActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/q;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountDelegateActivity;ILandroidx/activity/result/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountDelegateActivity;->lambda$onCreate$0(ILandroidx/activity/result/b;)V

    return-void
.end method

.method private lambda$onCreate$0(ILandroidx/activity/result/b;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "resultReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p2, Landroidx/activity/result/b;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    if-nez p1, :cond_0

    const-string p1, "KMX|SamsungAccountDelegateActivity"

    const-string v2, "success re-sign in"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p2, Landroidx/activity/result/b;->b:Landroid/content/Intent;

    const-string v2, "access_token"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mcc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "region_mcc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget p1, p2, Landroidx/activity/result/b;->a:I

    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/g0;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "KMX|SamsungAccountDelegateActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "request_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, La/c;

    invoke-direct {v0}, La/c;-><init>()V

    new-instance v1, La5/a;

    invoke-direct {v1, p0, p1}, La5/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(La/a;Landroidx/activity/result/c;)Landroidx/activity/result/f;

    move-result-object v0

    const-string v1, "region_mcc"

    const-string v2, "user_id"

    const-string v3, "mcc"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    if-nez p1, :cond_0

    const-string p1, "com.msc.action.samsungaccount.REQUEST_ACCESSTOKEN"

    goto :goto_0

    :cond_0
    const-string p1, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    :goto_0
    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string p1, "kmx_client_id"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "client_id"

    invoke-virtual {v2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "additional"

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroidx/activity/result/f;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method
