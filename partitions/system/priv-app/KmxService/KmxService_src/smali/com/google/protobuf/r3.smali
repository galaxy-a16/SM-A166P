.class public final Lcom/google/protobuf/r3;
.super Lcom/google/protobuf/q3;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/protobuf/p3;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/t3;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/q3;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/r3;->a:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    iput-object p2, p0, Lcom/google/protobuf/r3;->c:Lcom/google/protobuf/p3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lcom/google/protobuf/t3;->b:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/r3;->b:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/protobuf/p3;->g:Lcom/google/protobuf/j3;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/j3;->b(Lcom/google/protobuf/q3;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/p3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/r3;->c:Lcom/google/protobuf/p3;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/r3;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/r3;->a:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/n8;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/r3;->a:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object p0
.end method
