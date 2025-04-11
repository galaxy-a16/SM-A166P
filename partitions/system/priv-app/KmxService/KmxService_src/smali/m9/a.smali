.class public final Lm9/a;
.super Li4/f;
.source "SourceFile"


# static fields
.field public static g:Lm9/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li4/f;-><init>()V

    return-void
.end method

.method public static declared-synchronized T()Lm9/a;
    .locals 2

    const-class v0, Lm9/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm9/a;->g:Lm9/a;

    if-nez v1, :cond_0

    new-instance v1, Lm9/a;

    invoke-direct {v1}, Lm9/a;-><init>()V

    sput-object v1, Lm9/a;->g:Lm9/a;

    :cond_0
    sget-object v1, Lm9/a;->g:Lm9/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized W(Landroid/content/Context;)Z
    .locals 1

    const-class v0, Lm9/a;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p0

    invoke-virtual {p0}, Lf9/c;->J()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized U(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ", "

    const-string v1, "push registration fail - "

    monitor-enter p0

    :try_start_0
    const-string v2, "a"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, "a"

    const-string p2, "handlePushRegistrationFail. context is null"

    invoke-static {p1, p2}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lm9/a;->W(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Li4/f;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->FCM_PRIMARY_MODE:Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    invoke-static {}, Lf9/a;->b()Lf9/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lf9/a;->c(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {p1, p2}, Li4/f;->P(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    monitor-exit p0

    invoke-static {p1, p2, p3, p4}, Lh9/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized V(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string v0, "fcm"

    monitor-enter p0

    :try_start_0
    const-string v1, "a"

    const-string v2, "push registration success"

    invoke-static {v1, v2}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "a"

    const-string p2, "handlePushRegistrationSuccess. context is null"

    invoke-static {p1, p2}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v1

    invoke-virtual {v1}, Lf9/c;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "a"

    const-string v3, "push registration success but not valid request : already registered with the same token. ignore it"

    invoke-static {v1, v3}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move v1, v2

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-super {p0, p1}, Li4/f;->C(Landroid/content/Context;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_0
    if-nez v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_6
    invoke-static {p1}, Lm9/a;->W(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_4

    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    const-string v4, "ptype_cache"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_4
    :goto_1
    move v1, v3

    :goto_2
    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v4

    monitor-enter v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    const-string v5, "pid"

    invoke-virtual {v4, v5, p2}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit v4

    monitor-enter v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    const-string v5, "ptype"

    invoke-virtual {v4, v5, v0}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    monitor-exit v4

    if-eqz v1, :cond_5

    invoke-static {p1, p2}, Lh9/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-static {p1, p2}, Lh9/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    invoke-static {}, Lfc/e;->t()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p1}, Lh9/a;->f(Landroid/content/Context;)V

    goto :goto_4

    :cond_6
    invoke-static {p1}, Lfc/e;->B(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p1, v2}, Lh9/a;->e(Landroid/content/Context;Z)V

    goto :goto_4

    :cond_7
    invoke-static {p1, v3}, Lva/n;->Q(Landroid/content/Context;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_d
    monitor-exit v4

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v4

    throw p1

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method
