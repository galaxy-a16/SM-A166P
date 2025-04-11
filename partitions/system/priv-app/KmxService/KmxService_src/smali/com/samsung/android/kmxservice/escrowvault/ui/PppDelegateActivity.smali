.class public Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;
.super Ld/q;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KMX|PppDelegateActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/q;-><init>()V

    return-void
.end method

.method public static synthetic e(ILandroid/os/ResultReceiver;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;->lambda$sendResult$2(ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;->sendResult(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    const-string p1, "KMX|PppDelegateActivity"

    const-string v0, "click cancel"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;->sendResult(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 2

    const-string p1, "KMX|PppDelegateActivity"

    const-string v0, "click next"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.BIOMETRIC_ENROLL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

    const v1, 0x8000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    return-void
.end method

.method private static synthetic lambda$sendResult$2(ILandroid/os/ResultReceiver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private sendResult(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "resultReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/ui/b;

    invoke-direct {v1, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/b;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/g0;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getLockTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "lockType after set : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KMX|PppDelegateActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "OtherType"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;->sendResult(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/g0;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "KMX|PppDelegateActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0c0062

    invoke-virtual {p0, p1}, Ld/q;->setContentView(I)V

    const p1, 0x7f090072

    invoke-virtual {p0, p1}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/ui/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/a;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09016d

    invoke-virtual {p0, p1}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/ui/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/a;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/y;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity$1;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity$1;-><init>(Lcom/samsung/android/kmxservice/escrowvault/ui/PppDelegateActivity;Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroidx/activity/y;->b(Landroidx/activity/s;)Landroidx/activity/x;

    return-void
.end method
