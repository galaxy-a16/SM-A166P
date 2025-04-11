.class public abstract Lcom/google/protobuf/u3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:[I

.field public static final c:[Lcom/google/protobuf/h3;

.field public static final d:[Lcom/google/protobuf/n3;

.field public static final e:[Lcom/google/protobuf/l3;

.field public static final f:[Lcom/google/protobuf/t3;

.field public static final g:[Lcom/google/protobuf/s3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/protobuf/u3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/u3;->a:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/protobuf/u3;->b:[I

    new-array v1, v0, [Lcom/google/protobuf/h3;

    sput-object v1, Lcom/google/protobuf/u3;->c:[Lcom/google/protobuf/h3;

    new-array v1, v0, [Lcom/google/protobuf/n3;

    sput-object v1, Lcom/google/protobuf/u3;->d:[Lcom/google/protobuf/n3;

    new-array v1, v0, [Lcom/google/protobuf/l3;

    sput-object v1, Lcom/google/protobuf/u3;->e:[Lcom/google/protobuf/l3;

    new-array v1, v0, [Lcom/google/protobuf/t3;

    sput-object v1, Lcom/google/protobuf/u3;->f:[Lcom/google/protobuf/t3;

    new-array v0, v0, [Lcom/google/protobuf/s3;

    sput-object v0, Lcom/google/protobuf/u3;->g:[Lcom/google/protobuf/s3;

    return-void
.end method

.method public static a(Lcom/google/protobuf/p3;Lcom/google/protobuf/h3;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2e

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/p3;->a:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method
