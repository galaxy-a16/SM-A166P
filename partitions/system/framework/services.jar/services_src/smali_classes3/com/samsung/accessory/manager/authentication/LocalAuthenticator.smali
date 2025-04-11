.class public abstract Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.super Ljava/lang/Object;
.source "LocalAuthenticator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertMsg(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "MSG_SET_AUTH_HALL"

    return-object p0

    :pswitch_1
    const-string p0, "MSG_AUTH_FORCE_UNVERIFY"

    return-object p0

    :pswitch_2
    const-string p0, "MSG_AUTH_TIMEOUT"

    return-object p0

    :pswitch_3
    const-string p0, "MSG_AUTH_STOP"

    return-object p0

    :pswitch_4
    const-string p0, "MSG_AUTH_RESPONSE"

    return-object p0

    :pswitch_5
    const-string p0, "MSG_AUTH_START"

    return-object p0

    :pswitch_6
    const-string p0, "MSG_INITIALIZE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract systemReady()V
.end method
