.class public Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;
.super Ljava/lang/Object;
.source "SingleKeyGestureDetector.java"


# instance fields
.field public final event:Landroid/view/KeyEvent;

.field public final longPressType:I

.field public final policyFlags:I

.field public final rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;


# direct methods
.method public constructor <init>(Landroid/view/KeyEvent;Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->event:Landroid/view/KeyEvent;

    iput-object p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iput p3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->policyFlags:I

    iput p4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->longPressType:I

    return-void
.end method


# virtual methods
.method public getKeyEvent()Landroid/view/KeyEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->event:Landroid/view/KeyEvent;

    return-object p0
.end method

.method public getLongPressType()I
    .locals 0

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->longPressType:I

    return p0
.end method

.method public getPolicyFlags()I
    .locals 0

    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->policyFlags:I

    return p0
.end method

.method public getSingleKeyRule()Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return-object p0
.end method
