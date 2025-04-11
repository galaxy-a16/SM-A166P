.class public abstract Lcom/google/protobuf/b8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls9/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b8;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    invoke-static {}, Landroidx/work/impl/x;->h()Landroidx/work/impl/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    invoke-static {p1, p2}, Lz9/a;->b(Landroid/content/Context;Ls9/a;)Lz9/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/b8;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/b8;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/protobuf/b8;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/protobuf/b8;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/protobuf/b8;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;
    .locals 1

    const-string v0, "t"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "dl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/util/Map;)V
    .locals 8

    iget-object v0, p0, Lcom/google/protobuf/b8;->c:Ljava/lang/Object;

    check-cast v0, Lz9/a;

    new-instance v7, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    const-string v1, "t"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v1, "ts"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b8;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {p0, v1}, Lva/n;->F(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/google/protobuf/b8;->a(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    invoke-virtual {v0, v7}, Lz9/a;->c(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;)V

    return-void
.end method

.method public abstract c(Ljava/util/Map;)I
.end method

.method public abstract d(Ljava/util/Map;)Ljava/util/Map;
.end method
