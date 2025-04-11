.class public final Lg9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lg9/a;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg9/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg9/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg9/a;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized a()Lg9/a;
    .locals 2

    const-class v0, Lg9/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg9/a;->d:Lg9/a;

    if-nez v1, :cond_0

    new-instance v1, Lg9/a;

    invoke-direct {v1}, Lg9/a;-><init>()V

    sput-object v1, Lg9/a;->d:Lg9/a;

    :cond_0
    sget-object v1, Lg9/a;->d:Lg9/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
