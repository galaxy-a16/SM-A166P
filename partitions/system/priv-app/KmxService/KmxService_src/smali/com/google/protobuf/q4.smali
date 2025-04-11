.class public Lcom/google/protobuf/q4;
.super Lcom/google/protobuf/t4;
.source "SourceFile"


# static fields
.field public static final e:Lcom/google/protobuf/q4;


# instance fields
.field public final d:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/q4;

    invoke-direct {v0}, Lcom/google/protobuf/q4;-><init>()V

    sput-object v0, Lcom/google/protobuf/q4;->e:Lcom/google/protobuf/q4;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/protobuf/t4;->c:Lcom/google/protobuf/t4;

    invoke-direct {p0, v0}, Lcom/google/protobuf/t4;-><init>(Lcom/google/protobuf/t4;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/q4;->d:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/protobuf/h3;I)V
    .locals 1

    new-instance v0, Lcom/google/protobuf/p4;

    invoke-direct {v0, p1, p2}, Lcom/google/protobuf/p4;-><init>(Lcom/google/protobuf/h3;I)V

    iget-object p0, p0, Lcom/google/protobuf/q4;->d:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    return-void
.end method
