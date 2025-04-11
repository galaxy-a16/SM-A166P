.class public final Lf9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:Lf9/a;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:Z

.field public d:Ljava/io/Serializable;

.field public e:Ljava/lang/Object;

.field public f:Ljava/io/Serializable;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf9/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lf9/a;
    .locals 2

    const-class v0, Lf9/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf9/a;->h:Lf9/a;

    if-nez v1, :cond_0

    new-instance v1, Lf9/a;

    invoke-direct {v1}, Lf9/a;-><init>()V

    sput-object v1, Lf9/a;->h:Lf9/a;

    :cond_0
    sget-object v1, Lf9/a;->h:Lf9/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf9/a;->d:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string v0, "aid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iput-object v0, p0, Lf9/a;->d:Ljava/io/Serializable;

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lf9/a;->d:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final c(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;
    .locals 2

    iget-object v0, p0, Lf9/a;->g:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    if-nez v0, :cond_0

    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->FCM_PRIMARY_MODE:Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    const-string v1, "push_mode"

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iput-object v0, p0, Lf9/a;->g:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lf9/a;->g:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    return-object p0
.end method

.method public final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf9/a;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string v0, "spp_app_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iput-object v0, p0, Lf9/a;->e:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lf9/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lf9/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "D:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lf9/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", O:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf9/a;->f:Ljava/io/Serializable;

    check-cast v1, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf9/a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", M:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf9/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", P:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lf9/a;->g:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->getName(Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
