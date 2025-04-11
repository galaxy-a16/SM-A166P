.class public final Lcom/google/protobuf/s3;
.super Lcom/google/protobuf/q3;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/protobuf/p3;

.field public final e:Lcom/google/protobuf/h3;

.field public f:I

.field public g:[Lcom/google/protobuf/n3;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/q3;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/s3;->b:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/google/protobuf/u3;->a(Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/s3;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/protobuf/s3;->d:Lcom/google/protobuf/p3;

    iput p4, p0, Lcom/google/protobuf/s3;->a:I

    iput-object p3, p0, Lcom/google/protobuf/s3;->e:Lcom/google/protobuf/h3;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/protobuf/s3;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/p3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/s3;->d:Lcom/google/protobuf/p3;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/s3;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/s3;->b:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/n8;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/s3;->b:Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object p0
.end method

.method public final e()Z
    .locals 3

    iget-object p0, p0, Lcom/google/protobuf/s3;->g:[Lcom/google/protobuf/n3;

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object p0, p0, v1

    iget-boolean p0, p0, Lcom/google/protobuf/n3;->f:Z

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method
