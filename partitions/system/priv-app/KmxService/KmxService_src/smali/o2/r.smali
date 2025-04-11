.class public final Lo2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo2/q;


# static fields
.field public static volatile e:Lo2/k;


# instance fields
.field public final a:Lv2/a;

.field public final b:Lv2/a;

.field public final c:Lr2/d;

.field public final d:Ls2/i;


# direct methods
.method public constructor <init>(Lv2/a;Lv2/a;Lr2/d;Ls2/i;Ls2/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/r;->a:Lv2/a;

    iput-object p2, p0, Lo2/r;->b:Lv2/a;

    iput-object p3, p0, Lo2/r;->c:Lr2/d;

    iput-object p4, p0, Lo2/r;->d:Ls2/i;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lt/a;

    const/4 p1, 0x6

    invoke-direct {p0, p5, p1}, Lt/a;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p5, Ls2/k;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Lo2/r;
    .locals 2

    sget-object v0, Lo2/r;->e:Lo2/k;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo2/k;->f:Lob/a;

    invoke-interface {v0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/r;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lo2/r;->e:Lo2/k;

    if-nez v0, :cond_1

    const-class v0, Lo2/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/r;->e:Lo2/k;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lo2/k;

    invoke-direct {v1, p0}, Lo2/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo2/r;->e:Lo2/k;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
