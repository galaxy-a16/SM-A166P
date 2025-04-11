.class public Lcom/android/server/desktopmode/DockManager$DockMsgState;
.super Ljava/lang/Object;
.source "DockManager.java"


# instance fields
.field public mMsgState:Landroid/util/ArrayMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMsgState(Lcom/android/server/desktopmode/DockManager$DockMsgState;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public constructor <init>(IIIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    if-eqz p1, :cond_0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 p2, 0x66

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 p2, 0x67

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p4}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p5, :cond_4

    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    const/16 p2, 0x68

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p5}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method


# virtual methods
.method public final msgStateToString(I)Ljava/lang/String;
    .locals 1

    const/16 p0, 0xd2

    if-eq p1, p0, :cond_7

    const/16 p0, 0xd3

    if-eq p1, p0, :cond_6

    const/16 p0, 0xdc

    if-eq p1, p0, :cond_5

    const/16 p0, 0xdd

    if-eq p1, p0, :cond_4

    const/16 p0, 0xe6

    if-eq p1, p0, :cond_3

    const/16 p0, 0xe7

    if-eq p1, p0, :cond_2

    const/16 p0, 0xf0

    if-eq p1, p0, :cond_1

    const/16 p0, 0xf1

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "MSG_DOCK_REQUEST_DESTROY"

    return-object p0

    :pswitch_1
    const-string p0, "MSG_DOCK_REQUEST_POWER_INFO"

    return-object p0

    :pswitch_2
    const-string p0, "MSG_DOCK_REQUEST_CREATE"

    return-object p0

    :pswitch_3
    const-string p0, "MSG_DOCK_REQUEST_UNDEFINED"

    return-object p0

    :cond_0
    const-string p0, "MSG_DOCK_EXTRA_ERROR_UPDATED"

    return-object p0

    :cond_1
    const-string p0, "MSG_DOCK_EXTRA_UNDEFINED"

    return-object p0

    :cond_2
    const-string p0, "MSG_DOCK_VERSION_DSVERSION_UPDATED"

    return-object p0

    :cond_3
    const-string p0, "MSG_DOCK_VERSION_UNDEFINED"

    return-object p0

    :cond_4
    const-string p0, "MSG_DOCK_ERROR"

    return-object p0

    :cond_5
    const-string p0, "MSG_DOCK_ERROR_UNDEFINED"

    return-object p0

    :cond_6
    const-string p0, "MSG_DOCK_RESPONSE_POWER_INFO"

    return-object p0

    :cond_7
    const-string p0, "MSG_DOCK_RESPONSE_UNDEFINED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final msgTypeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "MSG_TYPE_EXTRA"

    return-object p0

    :pswitch_1
    const-string p0, "MSG_TYPE_VERSION"

    return-object p0

    :pswitch_2
    const-string p0, "MSG_TYPE_ERROR"

    return-object p0

    :pswitch_3
    const-string p0, "MSG_TYPE_RESPONSE"

    return-object p0

    :pswitch_4
    const-string p0, "MSG_TYPE_REQUEST"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLast(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->msgTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager$DockMsgState;->mMsgState:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
