.class public Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "SendSOSMessages.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mUserId:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mContext:Landroid/content/Context;

    .line 36
    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mUserId:I

    return-void
.end method

.method public static createAction(Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;
    .locals 1

    .line 40
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getStringResId()I
    .locals 1

    .line 0
    const v0, 0x1040128

    return v0
.end method


# virtual methods
.method public performCornerAction(I)V
    .locals 1

    .line 49
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
