.class public final Lh3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lh3/b;


# instance fields
.field public a:Ld/s0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh3/b;

    invoke-direct {v0}, Lh3/b;-><init>()V

    sput-object v0, Lh3/b;->b:Lh3/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh3/b;->a:Ld/s0;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ld/s0;
    .locals 3

    sget-object v0, Lh3/b;->b:Lh3/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lh3/b;->a:Ld/s0;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    new-instance v1, Ld/s0;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Ld/s0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lh3/b;->a:Ld/s0;

    :cond_1
    iget-object p0, v0, Lh3/b;->a:Ld/s0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
