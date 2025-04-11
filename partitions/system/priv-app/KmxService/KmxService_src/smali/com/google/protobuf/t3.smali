.class public final Lcom/google/protobuf/t3;
.super Lcom/google/protobuf/q3;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/protobuf/p3;

.field public final d:[Lcom/google/protobuf/r3;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/protobuf/p3;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/protobuf/q3;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/t3;->a:Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/google/protobuf/u3;->a(Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/t3;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/protobuf/t3;->c:Lcom/google/protobuf/p3;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/r3;

    iput-object v0, p0, Lcom/google/protobuf/t3;->d:[Lcom/google/protobuf/r3;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/t3;->d:[Lcom/google/protobuf/r3;

    new-instance v2, Lcom/google/protobuf/r3;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v3

    invoke-direct {v2, v3, p2, p0}, Lcom/google/protobuf/r3;-><init>(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/t3;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/google/protobuf/p3;->g:Lcom/google/protobuf/j3;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/j3;->b(Lcom/google/protobuf/q3;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/p3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/t3;->c:Lcom/google/protobuf/p3;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/t3;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/t3;->a:Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/n8;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/t3;->a:Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object p0
.end method
