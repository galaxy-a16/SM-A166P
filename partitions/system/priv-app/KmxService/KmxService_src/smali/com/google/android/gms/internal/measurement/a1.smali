.class public final Lcom/google/android/gms/internal/measurement/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/a1;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/a1;->a:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/n4;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/a1;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/a1;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    :try_start_0
    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "onActivityCreated"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/net/Uri;->isHierarchical()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v4, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v4, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "https://www.google.com"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android-app://com.google.appcrawler"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v0

    :goto_1
    if-eq v0, v2, :cond_4

    const-string v2, "auto"

    goto :goto_2

    :cond_4
    const-string v2, "gs"

    :goto_2
    move-object v8, v2

    :try_start_1
    const-string v2, "referrer"

    invoke-virtual {v7, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez p2, :cond_5

    move v6, v0

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v1, Lz2/f;

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lz2/f;-><init>(Lcom/google/android/gms/internal/measurement/a1;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    :try_start_2
    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Throwable caught in onActivityCreated"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_4
    check-cast v3, Lcom/google/android/gms/measurement/internal/n4;

    iget-object p0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/u4;->s(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    :goto_5
    check-cast v3, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/u4;->s(Landroid/app/Activity;Landroid/os/Bundle;)V

    throw p0

    :pswitch_1
    check-cast v3, Lcom/google/android/gms/internal/measurement/b1;

    new-instance v0, Lcom/google/android/gms/internal/measurement/u0;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/measurement/u0;-><init>(Lcom/google/android/gms/internal/measurement/a1;Landroid/os/Bundle;Landroid/app/Activity;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    return-void

    :goto_6
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_10

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_b

    :cond_7
    const-string p1, "FirebaseMessaging"

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_8

    const-string p2, "gcm.n.analytics_data"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception p0

    const-string p2, "Failed trying to get analytics data from Intent extras."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    const/4 p0, 0x0

    :goto_7
    const-string p2, "1"

    if-nez p0, :cond_9

    goto :goto_8

    :cond_9
    const-string v1, "google.c.a.e"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_8
    if-eqz v1, :cond_10

    if-nez p0, :cond_a

    goto/16 :goto_a

    :cond_a
    const-string v1, "google.c.a.tc"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x3

    if-eqz p2, :cond_e

    invoke-static {}, Lv4/g;->c()Lv4/g;

    move-result-object p2

    invoke-virtual {p2}, Lv4/g;->a()V

    iget-object p2, p2, Lv4/g;->d:La5/i;

    const-class v2, Lx4/a;

    invoke-interface {p2, v2}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx4/a;

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Received event with track-conversion=true. Setting user property and reengagement event"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz p2, :cond_d

    const-string p1, "google.c.a.c_id"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lx4/b;

    const-string v1, "fcm"

    sget-object v2, Ly4/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    iget-object v0, p2, Lx4/b;->a:Lp5/c;

    iget-object v0, v0, Lp5/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/t0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    :goto_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    const-string v2, "Firebase"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "medium"

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "campaign"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_cmp"

    invoke-virtual {p2, p1, v0}, Lx4/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_a

    :cond_d
    const-string p2, "Unable to set user property for conversion tracking:  analytics library is missing"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_e
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_f

    const-string p2, "Received event with track-conversion=false. Do not set user property"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_a
    const-string p1, "_no"

    invoke-static {p1, p0}, Lh3/a;->B(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_10
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/a1;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/n4;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u4;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u4;->g:Landroid/app/Activity;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/u4;->g:Landroid/app/Activity;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->t()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/u4;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    new-instance v1, Lcom/google/android/gms/internal/measurement/y0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/measurement/y0;-><init>(Lcom/google/android/gms/internal/measurement/a1;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/measurement/a1;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/u4;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v2, Lcom/google/android/gms/measurement/internal/u4;->k:Z

    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/google/android/gms/measurement/internal/u4;->h:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, v2, Lcom/google/android/gms/measurement/internal/u4;->c:Lcom/google/android/gms/measurement/internal/r4;

    iget-object p1, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/m0;

    invoke-direct {v0, v2, v4, v5, v7}, Lcom/google/android/gms/measurement/internal/m0;-><init>(Lcom/google/android/gms/measurement/internal/m2;JI)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/u4;->t(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/r4;

    move-result-object v3

    iget-object p1, v2, Lcom/google/android/gms/measurement/internal/u4;->c:Lcom/google/android/gms/measurement/internal/r4;

    iput-object p1, v2, Lcom/google/android/gms/measurement/internal/u4;->d:Lcom/google/android/gms/measurement/internal/r4;

    iput-object v1, v2, Lcom/google/android/gms/measurement/internal/u4;->c:Lcom/google/android/gms/measurement/internal/r4;

    iget-object p1, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v0, Lv1/g;

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lv1/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;JI)V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/n4;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->k:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object p1, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v2, Lcom/google/android/gms/measurement/internal/g5;

    invoke-direct {v2, p0, v0, v1, v7}, Lcom/google/android/gms/measurement/internal/g5;-><init>(Lcom/google/android/gms/measurement/internal/k5;JI)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    new-instance v1, Lcom/google/android/gms/internal/measurement/y0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/measurement/y0;-><init>(Lcom/google/android/gms/internal/measurement/a1;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/measurement/a1;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/n4;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->k:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v2, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/g5;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v2, v3, v6}, Lcom/google/android/gms/measurement/internal/g5;-><init>(Lcom/google/android/gms/measurement/internal/k5;JI)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/n4;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u4;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/u4;->k:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u4;->g:Landroid/app/Activity;

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u4;->l:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u4;->g:Landroid/app/Activity;

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/u4;->h:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/u4;->i:Lcom/google/android/gms/measurement/internal/r4;

    iget-object v2, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/t4;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/measurement/internal/t4;-><init>(Lcom/google/android/gms/measurement/internal/u4;I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/u4;->i:Lcom/google/android/gms/measurement/internal/r4;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u4;->c:Lcom/google/android/gms/measurement/internal/r4;

    iget-object p1, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/t4;

    invoke-direct {v0, p0, v6}, Lcom/google/android/gms/measurement/internal/t4;-><init>(Lcom/google/android/gms/measurement/internal/u4;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/u4;->t(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/r4;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v6}, Lcom/google/android/gms/measurement/internal/u4;->u(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/r4;Z)V

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->m()Lcom/google/android/gms/measurement/internal/n1;

    move-result-object p0

    iget-object p1, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v2, Lcom/google/android/gms/measurement/internal/m0;

    invoke-direct {v2, p0, v0, v1, v6}, Lcom/google/android/gms/measurement/internal/m0;-><init>(Lcom/google/android/gms/measurement/internal/m2;JI)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    new-instance v2, Lcom/google/android/gms/internal/measurement/y0;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/y0;-><init>(Lcom/google/android/gms/internal/measurement/a1;Landroid/app/Activity;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/a1;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast v1, Lcom/google/android/gms/measurement/internal/n4;

    iget-object p0, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->t()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/u4;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/r4;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "id"

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/r4;->c:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "name"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/r4;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "referrer_name"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/c0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/c0;-><init>()V

    check-cast v1, Lcom/google/android/gms/internal/measurement/b1;

    new-instance v2, Lcom/google/android/gms/internal/measurement/u0;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/u0;-><init>(Lcom/google/android/gms/internal/measurement/a1;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/c0;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    const-wide/16 p0, 0x32

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/c0;->c(J)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/a1;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    new-instance v1, Lcom/google/android/gms/internal/measurement/y0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/measurement/y0;-><init>(Lcom/google/android/gms/internal/measurement/a1;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/a1;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    new-instance v1, Lcom/google/android/gms/internal/measurement/y0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/measurement/y0;-><init>(Lcom/google/android/gms/internal/measurement/a1;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
