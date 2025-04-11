.class public Lcom/android/server/enterprise/plm/common/PlmMessage;
.super Ljava/lang/Object;
.source "PlmMessage.java"


# instance fields
.field public callback:Ljava/lang/Object;

.field public obj1:Ljava/lang/Object;

.field public obj2:Ljava/lang/Object;

.field public obj3:Ljava/lang/Object;

.field public obj4:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 28
    new-instance v0, Lcom/android/server/enterprise/plm/common/PlmMessage;

    invoke-direct {v0}, Lcom/android/server/enterprise/plm/common/PlmMessage;-><init>()V

    .line 29
    iput-object p2, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 30
    iput-object p3, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->callback:Ljava/lang/Object;

    .line 32
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 33
    iput p1, p0, Landroid/os/Message;->what:I

    .line 34
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 41
    new-instance v0, Lcom/android/server/enterprise/plm/common/PlmMessage;

    invoke-direct {v0}, Lcom/android/server/enterprise/plm/common/PlmMessage;-><init>()V

    .line 42
    iput-object p2, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 43
    iput-object p3, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 44
    iput-object p4, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->callback:Ljava/lang/Object;

    .line 46
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 47
    iput p1, p0, Landroid/os/Message;->what:I

    .line 48
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 55
    new-instance v0, Lcom/android/server/enterprise/plm/common/PlmMessage;

    invoke-direct {v0}, Lcom/android/server/enterprise/plm/common/PlmMessage;-><init>()V

    .line 56
    iput-object p2, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 57
    iput-object p3, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 58
    iput-object p4, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    .line 59
    iput-object p5, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->callback:Ljava/lang/Object;

    .line 61
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 62
    iput p1, p0, Landroid/os/Message;->what:I

    .line 63
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 70
    new-instance v0, Lcom/android/server/enterprise/plm/common/PlmMessage;

    invoke-direct {v0}, Lcom/android/server/enterprise/plm/common/PlmMessage;-><init>()V

    .line 71
    iput-object p2, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 72
    iput-object p3, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 73
    iput-object p4, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    .line 74
    iput-object p5, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj4:Ljava/lang/Object;

    .line 75
    iput-object p6, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->callback:Ljava/lang/Object;

    .line 77
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 78
    iput p1, p0, Landroid/os/Message;->what:I

    .line 79
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method
