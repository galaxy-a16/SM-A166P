.class public Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;
.super Ljava/lang/Object;
.source "TouchState.java"


# instance fields
.field public mTime:J

.field public mX:F

.field public mY:F

.field public final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchState;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTime(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmX(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmY(Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    return p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/gestures/TouchState;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->this$0:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 605
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    .line 606
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    const-wide/16 v0, 0x0

    .line 607
    iput-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    return-void
.end method

.method public set(FFJ)V
    .locals 0

    .line 599
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mX:F

    .line 600
    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mY:F

    .line 601
    iput-wide p3, p0, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    return-void
.end method
