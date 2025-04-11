.class public final Landroidx/fragment/app/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p7, p0, Landroidx/fragment/app/q1;->a:I

    iput-object p1, p0, Landroidx/fragment/app/q1;->g:Ljava/lang/Object;

    iput p2, p0, Landroidx/fragment/app/q1;->b:I

    iput-object p3, p0, Landroidx/fragment/app/q1;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/q1;->d:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/fragment/app/q1;->e:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/fragment/app/q1;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/q1;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lva/n;->i(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/fragment/app/q1;->c:Ljava/lang/Object;

    iput p3, p0, Landroidx/fragment/app/q1;->b:I

    iput-object p4, p0, Landroidx/fragment/app/q1;->d:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/fragment/app/q1;->e:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/fragment/app/q1;->f:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/fragment/app/q1;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Landroidx/fragment/app/q1;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/q1;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/x2;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/a4;->b:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroidx/fragment/app/q1;->g:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/x2;

    iget-char v3, v2, Lcom/google/android/gms/measurement/internal/x2;->c:C

    const/4 v4, 0x1

    if-nez v3, :cond_5

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    monitor-enter v2

    :try_start_0
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    iget-object v3, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-static {}, Lfc/k;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_1

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/Boolean;

    :cond_1
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/Boolean;

    iget-object v3, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "My process not in the list of running processes"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/fragment/app/q1;->g:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/x2;

    iget-object v3, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x43

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroidx/fragment/app/q1;->g:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/x2;

    iget-object v3, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x63

    :goto_2
    iput-char v3, v2, Lcom/google/android/gms/measurement/internal/x2;->c:C

    :cond_5
    iget-object v2, p0, Landroidx/fragment/app/q1;->g:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/x2;

    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/x2;->d:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_6

    iget-object v3, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->o()V

    const-wide/32 v5, 0x11d28

    iput-wide v5, v2, Lcom/google/android/gms/measurement/internal/x2;->d:J

    :cond_6
    iget v2, p0, Landroidx/fragment/app/q1;->b:I

    const-string v3, "01VDIWEA?"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Landroidx/fragment/app/q1;->g:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/x2;

    iget-char v5, v3, Lcom/google/android/gms/measurement/internal/x2;->c:C

    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/x2;->d:J

    iget-object v3, p0, Landroidx/fragment/app/q1;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Landroidx/fragment/app/q1;->d:Ljava/lang/Object;

    iget-object v11, p0, Landroidx/fragment/app/q1;->e:Ljava/lang/Object;

    iget-object v12, p0, Landroidx/fragment/app/q1;->f:Ljava/lang/Object;

    invoke-static {v4, v3, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/x2;->u(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "2"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-static {v4, v2, v3}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_7

    iget-object p0, p0, Landroidx/fragment/app/q1;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_7
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/i3;->d:Lcom/google/android/gms/measurement/internal/h3;

    if-eqz p0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h3;->e:Lcom/google/android/gms/measurement/internal/b4;

    check-cast v0, Lcom/google/android/gms/measurement/internal/i3;

    invoke-virtual {v0}, Lb0/h;->k()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h3;->e:Lcom/google/android/gms/measurement/internal/b4;

    check-cast v1, Lcom/google/android/gms/measurement/internal/i3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v1, v3, v7

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h3;->b()V

    :cond_8
    if-nez v2, :cond_9

    const-string v2, ""

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/h3;->c:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v1, v3, v7

    const-wide/16 v5, 0x1

    if-gtz v1, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h3;->d:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/h3;->c:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_a
    iget-object v1, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u5;->t()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    add-long/2addr v3, v5

    const-wide v5, 0x7fffffffffffffffL

    div-long v9, v5, v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    and-long/2addr v5, v7

    cmp-long v1, v5, v9

    if-gez v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h3;->d:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_b
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/h3;->c:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    :cond_c
    iget-object p0, p0, Landroidx/fragment/app/q1;->g:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/x2;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/x2;->w()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Persisted config not initialized. Not logging error/warn"

    const/4 v1, 0x6

    invoke-static {v1, p0, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    return-void

    :goto_5
    :pswitch_1
    iget v0, p0, Landroidx/fragment/app/q1;->b:I

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Landroidx/fragment/app/q1;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/q1;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v2}, Landroidx/core/view/o0;->v(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/q1;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/q1;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/core/view/o0;->v(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    return-void

    :goto_6
    iget-object v0, p0, Landroidx/fragment/app/q1;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/z2;

    iget-object v0, p0, Landroidx/fragment/app/q1;->f:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Landroidx/fragment/app/q1;->b:I

    iget-object v0, p0, Landroidx/fragment/app/q1;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    iget-object v0, p0, Landroidx/fragment/app/q1;->e:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [B

    iget-object p0, p0, Landroidx/fragment/app/q1;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ljava/util/Map;

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
