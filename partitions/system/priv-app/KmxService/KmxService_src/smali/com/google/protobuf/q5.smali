.class public final Lcom/google/protobuf/q5;
.super Lcom/google/protobuf/v5;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/protobuf/n8;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/n8;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/q5;->b:Lcom/google/protobuf/n8;

    iput-object p2, p0, Lcom/google/protobuf/q5;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/protobuf/v5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/n3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/q5;->b:Lcom/google/protobuf/n8;

    invoke-interface {v0}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v0

    iget-object p0, p0, Lcom/google/protobuf/q5;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/h3;->f(Ljava/lang/String;)Lcom/google/protobuf/n3;

    move-result-object p0

    return-object p0
.end method
