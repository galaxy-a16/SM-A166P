.class public final Lcom/google/android/gms/measurement/internal/r2;
.super Lcom/google/android/gms/measurement/internal/g3;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:J

.field public final h:J

.field public i:Ljava/util/List;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public p:J

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;J)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/g3;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/r2;->p:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r2;->q:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/r2;->h:J

    return-void
.end method


# virtual methods
.method public final n()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final o()V
    .locals 13

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "Unknown"

    const/high16 v5, -0x80000000

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "unknown"

    if-nez v3, :cond_0

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v10

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v11, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_0
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v10

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v11, "Error retrieving app installer package name. appId"

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-nez v8, :cond_1

    const-string v8, "manual_install"

    goto :goto_1

    :cond_1
    const-string v9, "com.android.vending"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v8, v6

    :cond_2
    :goto_1
    :try_start_1
    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_3
    move-object v10, v4

    :goto_2
    :try_start_2
    iget-object v4, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v5, v9, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v9, v4

    move-object v4, v10

    goto :goto_3

    :catch_2
    move-object v9, v4

    :goto_3
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v11

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v12, "Error retrieving package info. appId, appName"

    invoke-virtual {v10, v12, v11, v4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v9

    :cond_4
    :goto_4
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/r2;->c:Ljava/lang/String;

    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/r2;->f:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/r2;->d:Ljava/lang/String;

    iput v5, p0, Lcom/google/android/gms/measurement/internal/r2;->e:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/r2;->g:J

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/t3;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_5

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/t3;->c:Ljava/lang/String;

    const-string v8, "am"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_5

    :cond_5
    move v4, v7

    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->l()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v10, "App measurement disabled via the global data collection setting"

    goto :goto_8

    :pswitch_1
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v10, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    goto :goto_9

    :pswitch_2
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v10, "App measurement disabled via the init parameters"

    goto :goto_6

    :pswitch_3
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v10, "App measurement disabled via the manifest"

    goto :goto_8

    :pswitch_4
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v10, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    goto :goto_8

    :pswitch_5
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v10, "App measurement deactivated via the init parameters"

    goto :goto_6

    :pswitch_6
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v10, "App measurement deactivated via the manifest"

    goto :goto_8

    :pswitch_7
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v10, "App measurement collection enabled"

    :goto_6
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    goto :goto_9

    :goto_7
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v10, "App measurement disabled due to denied storage consent"

    :goto_8
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->l:Lcom/google/android/gms/measurement/internal/v2;

    :goto_9
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/r2;->l:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/r2;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/t3;->b:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/r2;->m:Ljava/lang/String;

    :cond_6
    const/4 v4, 0x0

    :try_start_3
    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/t3;->v:Ljava/lang/String;

    invoke-static {v9, v10}, Lv9/a;->j0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eq v5, v10, :cond_7

    move-object v6, v9

    :cond_7
    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/r2;->l:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/t3;->v:Ljava/lang/String;

    invoke-static {v5}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_a

    :cond_8
    invoke-static {v5}, Lkotlinx/coroutines/a0;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    :goto_a
    const-string v5, "admob_app_id"

    const-string v10, "string"

    invoke-virtual {v9, v5, v10, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v5, :cond_9

    goto :goto_b

    :cond_9
    :try_start_4
    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_c

    :catch_3
    :goto_b
    move-object v5, v4

    :goto_c
    :try_start_5
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/r2;->m:Ljava/lang/String;

    :cond_a
    if-nez v8, :cond_c

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "App measurement enabled for app package, google app id"

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/r2;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/r2;->l:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/r2;->m:Ljava/lang/String;

    goto :goto_d

    :cond_b
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/r2;->l:Ljava/lang/String;

    :goto_d
    invoke-virtual {v0, v5, v6, v8}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v2

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v6, "Fetching Google App Id failed with exception. appId"

    invoke-virtual {v5, v6, v2, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    :goto_e
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/r2;->i:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "analytics.safelisted_events"

    invoke-static {v2}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->q()Landroid/os/Bundle;

    move-result-object v5

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    if-nez v5, :cond_d

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v5, "Failed to load metadata: Metadata bundle is null"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_d
    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    :goto_f
    move-object v2, v4

    goto :goto_10

    :cond_e
    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_10
    if-eqz v2, :cond_10

    :try_start_6
    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_11

    :cond_f
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_11

    :catch_5
    move-exception v2

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v5, "Failed to load string array from metadata: resource not found"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    :goto_11
    if-nez v4, :cond_11

    goto :goto_12

    :cond_11
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Safelisted event list is empty. Ignoring"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_13

    :cond_12
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v6, "safelisted event"

    invoke-virtual {v5, v6, v2}, Lcom/google/android/gms/measurement/internal/u5;->Q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_13

    :cond_14
    :goto_12
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/r2;->i:Ljava/util/List;

    :goto_13
    if-eqz v3, :cond_15

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-static {v0}, Lh3/a;->y(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/r2;->k:I

    return-void

    :cond_15
    iput v7, p0, Lcom/google/android/gms/measurement/internal/r2;->k:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r2;->c:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/r2;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r2;->l:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/r2;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final r()V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v4, "Analytics Storage consent is not granted"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    new-array v1, v1, [B

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/u5;->t()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v5, v2

    const-string v1, "%032x"

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-array v3, v3, [Ljava/lang/Object;

    if-nez v1, :cond_1

    const-string v5, "null"

    goto :goto_1

    :cond_1
    const-string v5, "not null"

    :goto_1
    aput-object v5, v3, v2

    const-string v2, "Resetting session stitching token to %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/r2;->n:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/r2;->p:J

    return-void
.end method
