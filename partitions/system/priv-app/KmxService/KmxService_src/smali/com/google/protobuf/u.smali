.class public abstract Lcom/google/protobuf/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field public static final b:Ljava/lang/Class;

.field public static final c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/protobuf/u;->a:Ljava/lang/ThreadLocal;

    const-string v0, "java.io.FileOutputStream"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/protobuf/u;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_1
    sget-boolean v1, Lcom/google/protobuf/wb;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/wb;->o(Ljava/lang/reflect/Field;)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_0
    const-wide/16 v0, -0x1

    :goto_1
    sput-wide v0, Lcom/google/protobuf/u;->c:J

    return-void
.end method
