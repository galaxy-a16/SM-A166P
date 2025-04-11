.class public final enum Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

.field public static final enum PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

.field public static final enum PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

.field public static final enum UNKNOWN:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->UNKNOWN:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    const/4 v1, 0x0

    const-string v2, "unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->UNKNOWN:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    new-instance v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    const/4 v1, 0x1

    const-string v2, "proto2"

    const-string v3, "PROTO2"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    new-instance v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    const/4 v1, 0x2

    const-string v2, "proto3"

    const-string v3, "PROTO3"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-static {}, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->$values()[Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->$VALUES:[Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;
    .locals 1

    const-class v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->$VALUES:[Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-virtual {v0}, [Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    return-object v0
.end method
