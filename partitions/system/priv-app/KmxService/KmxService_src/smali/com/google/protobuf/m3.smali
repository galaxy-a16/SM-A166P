.class public final Lcom/google/protobuf/m3;
.super Lcom/google/protobuf/q3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/z6;


# static fields
.field public static final e:Lr/i;

.field public static final f:Lm1/e;


# instance fields
.field public final a:I

.field public b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/protobuf/l3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr/i;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lr/i;-><init>(I)V

    sput-object v0, Lcom/google/protobuf/m3;->e:Lr/i;

    new-instance v0, Lm1/e;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lm1/e;-><init>(I)V

    sput-object v0, Lcom/google/protobuf/m3;->f:Lm1/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/google/protobuf/p3;Lcom/google/protobuf/l3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/q3;-><init>()V

    iput p4, p0, Lcom/google/protobuf/m3;->a:I

    iput-object p1, p0, Lcom/google/protobuf/m3;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    iput-object p3, p0, Lcom/google/protobuf/m3;->d:Lcom/google/protobuf/l3;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object p3, p3, Lcom/google/protobuf/l3;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/m3;->c:Ljava/lang/String;

    .line 4
    iget-object p1, p2, Lcom/google/protobuf/p3;->g:Lcom/google/protobuf/j3;

    .line 5
    invoke-virtual {p1, p0}, Lcom/google/protobuf/j3;->b(Lcom/google/protobuf/q3;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/l3;Ljava/lang/Integer;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/q3;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_ENUM_VALUE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/l3;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/h1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Lcom/google/protobuf/h1;->b:Ljava/lang/Object;

    iget v0, v1, Lcom/google/protobuf/h1;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/google/protobuf/h1;->a:I

    invoke-virtual {v1}, Lcom/google/protobuf/d6;->onChanged()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 9
    iput p2, v1, Lcom/google/protobuf/h1;->c:I

    iget p2, v1, Lcom/google/protobuf/h1;->a:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v1, Lcom/google/protobuf/h1;->a:I

    invoke-virtual {v1}, Lcom/google/protobuf/d6;->onChanged()V

    .line 10
    invoke-virtual {v1}, Lcom/google/protobuf/h1;->c()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/google/protobuf/m3;->a:I

    iput-object p2, p0, Lcom/google/protobuf/m3;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    iput-object p1, p0, Lcom/google/protobuf/m3;->d:Lcom/google/protobuf/l3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/google/protobuf/l3;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/m3;->c:Ljava/lang/String;

    return-void

    .line 12
    :cond_0
    invoke-static {p2}, Lcom/google/protobuf/a;->newUninitializedMessageException(Lcom/google/protobuf/n8;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/p3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/m3;->d:Lcom/google/protobuf/l3;

    iget-object p0, p0, Lcom/google/protobuf/l3;->c:Lcom/google/protobuf/p3;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/m3;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/m3;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/google/protobuf/n8;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/m3;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p0
.end method

.method public final getNumber()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/m3;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/m3;->b:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
