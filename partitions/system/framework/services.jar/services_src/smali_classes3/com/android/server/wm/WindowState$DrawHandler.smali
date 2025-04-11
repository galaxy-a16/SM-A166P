.class public Lcom/android/server/wm/WindowState$DrawHandler;
.super Ljava/lang/Object;
.source "WindowState.java"


# instance fields
.field public mConsumer:Ljava/util/function/Consumer;

.field public mSeqId:I

.field public mType:I

.field public final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;ILjava/util/function/Consumer;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcom/android/server/wm/WindowState$DrawHandler;->this$0:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 897
    iput p1, p0, Lcom/android/server/wm/WindowState$DrawHandler;->mType:I

    .line 905
    iput p2, p0, Lcom/android/server/wm/WindowState$DrawHandler;->mSeqId:I

    .line 906
    iput-object p3, p0, Lcom/android/server/wm/WindowState$DrawHandler;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method
