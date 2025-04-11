.class public final Lcom/google/protobuf/v4;
.super Lcom/google/protobuf/u4;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-class v0, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;

    const-string v1, "extensions"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/wb;->o(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to lookup extension field offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/u4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/t4;Lcom/google/protobuf/r8;I)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/q4;

    check-cast p2, Lcom/google/protobuf/n8;

    invoke-interface {p2}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Lcom/google/protobuf/q4;->b(Lcom/google/protobuf/h3;I)V

    return-void
.end method

.method public final b(Lcom/google/protobuf/r8;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;

    return p0
.end method
