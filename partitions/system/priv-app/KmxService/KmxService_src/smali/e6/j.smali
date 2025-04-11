.class public final Le6/j;
.super Le6/d;
.source "SourceFile"


# static fields
.field public static final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBREL:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x2

    sput v0, Le6/j;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le6/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()I
    .locals 0

    sget p0, Le6/j;->q:I

    return p0
.end method

.method public final P()Lh8/b;
    .locals 0

    sget-object p0, Lk7/a;->f:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelReasonCode;

    return-object p0
.end method
