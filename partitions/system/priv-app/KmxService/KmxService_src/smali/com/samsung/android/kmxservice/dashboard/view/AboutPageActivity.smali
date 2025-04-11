.class public Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;
.super Ld/q;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KMX|AboutSecurityStatusActivity"


# instance fields
.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mOpenSourceButton:Landroid/widget/Button;

.field mPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mUpdateAvailableText:Landroid/widget/TextView;

.field private mUpdateButton:Landroid/widget/Button;

.field private mVersionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/q;-><init>()V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->lambda$toolbarInit$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->lambda$onCreate$2()V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method private getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic h(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method private handleAppInfo(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|AboutSecurityStatusActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mUpdateAvailableText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    return-object p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mPackageList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->openGalaxyStoreDeeplink(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/kmxservice/dashboard/view/OpenSourceLicensesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onCreate$2()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->setUpdateLayout()V

    return-void
.end method

.method private synthetic lambda$toolbarInit$3(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private openGalaxyStoreDeeplink(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->Companion:Lcom/samsung/android/kmxservice/common/update/UpdateChecker$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker$Companion;->getInstance()Lcom/samsung/android/kmxservice/common/update/UpdateChecker;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/kmxservice/common/update/UpdateChecker;->openGalaxyStoreDeepLink(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private setUpdateLayout()V
    .locals 4

    const-string v0, "KMX|AboutSecurityStatusActivity"

    const-string v1, "showUpdateAvailablePopup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/common/update/ContextFactory;->attachApplicationContext(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity$1;-><init>(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->getUpdateAvailable()V

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/connector/AppUpdateManager;->startUpdateCheck()V

    return-void
.end method

.method private toolbarInit()V
    .locals 3

    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v0, 0x7f090260

    invoke-virtual {p0, v0}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->setToolbarTitle(Ljava/lang/String;)V

    const v0, 0x7f0502e8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->setToolbarBgColor(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Ld/q;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Ld/q;->getSupportActionBar()Ld/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld/b;->m(Z)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/samsung/android/kmxservice/dashboard/view/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/dashboard/view/a;-><init>(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/g0;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ld/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f0c0008

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0009

    :goto_0
    invoke-virtual {p0, p1}, Ld/q;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x7f0502ec

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->toolbarInit()V

    const p1, 0x7f090057

    invoke-virtual {p0, p1}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mVersionTextView:Landroid/widget/TextView;

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120164

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090275

    invoke-virtual {p0, p1}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090273

    invoke-virtual {p0, p1}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mUpdateAvailableText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090274

    invoke-virtual {p0, p1}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/kmxservice/dashboard/view/a;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/kmxservice/dashboard/view/a;-><init>(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09018a

    invoke-virtual {p0, p1}, Ld/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mOpenSourceButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/kmxservice/dashboard/view/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/dashboard/view/a;-><init>(Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/kmxservice/dashboard/view/e;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/kmxservice/dashboard/view/e;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0}, Ld/q;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    const/high16 v0, 0x7f0e0000

    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090034

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "com.samsung.android.kmxservice"

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->handleAppInfo(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setToolbarBgColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method public setToolbarTitle(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ld/q;->getSupportActionBar()Ld/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld/b;->o(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/AboutPageActivity;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
