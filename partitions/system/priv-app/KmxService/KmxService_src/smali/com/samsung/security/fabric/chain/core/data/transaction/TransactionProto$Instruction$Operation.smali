.class public final enum Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;",
        ">;",
        "Lcom/google/protobuf/r9;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

.field public static final enum DELETE:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

.field public static final DELETE_VALUE:I = 0x2

.field public static final enum POST:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

.field public static final POST_VALUE:I = 0x0

.field public static final enum PUT:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

.field public static final PUT_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

.field private static final VALUES:[Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

.field private static final internalValueMap:Lcom/google/protobuf/a7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a7;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->POST:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    new-instance v1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    const-string v3, "PUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->PUT:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    new-instance v3, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->DELETE:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    new-instance v5, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    const/4 v7, -0x1

    const-string v8, "UNRECOGNIZED"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->UNRECOGNIZED:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v9

    sput-object v7, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->$VALUES:[Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    new-instance v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation$1;

    invoke-direct {v0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation$1;-><init>()V

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->internalValueMap:Lcom/google/protobuf/a7;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->values()[Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    move-result-object v0

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->VALUES:[Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->DELETE:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->PUT:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->POST:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/l3;
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getDescriptor()Lcom/google/protobuf/h3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/h3;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l3;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/a7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/a7;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->internalValueMap:Lcom/google/protobuf/a7;

    return-object v0
.end method

.method public static valueOf(I)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->forNumber(I)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/m3;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/m3;->d:Lcom/google/protobuf/l3;

    .line 3
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->getDescriptor()Lcom/google/protobuf/l3;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    iget p0, p0, Lcom/google/protobuf/m3;->a:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->UNRECOGNIZED:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->VALUES:[Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;
    .locals 1

    .line 4
    const-class v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    return-object p0
.end method

.method public static values()[Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->$VALUES:[Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    invoke-virtual {v0}, [Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/l3;
    .locals 0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->getDescriptor()Lcom/google/protobuf/l3;

    move-result-object p0

    return-object p0
.end method

.method public final getNumber()I
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->UNRECOGNIZED:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    if-eq p0, v0, :cond_0

    iget p0, p0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->value:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/m3;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->getDescriptor()Lcom/google/protobuf/l3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/l3;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/m3;

    return-object p0
.end method
