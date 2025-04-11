.class public final Lcom/google/protobuf/r5;
.super Lcom/google/protobuf/v5;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/r5;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/protobuf/r5;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/protobuf/r5;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/protobuf/v5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/n3;
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/r5;->c:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/r5;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "descriptor"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p3;

    iget-object p0, p0, Lcom/google/protobuf/r5;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/google/protobuf/p3;->f(Ljava/lang/String;)Lcom/google/protobuf/n3;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot load descriptors: "

    const-string v3, " is not a valid descriptor class name"

    invoke-static {v2, v0, v3}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
