.class public Lcom/android/server/companion/virtual/InputController$NativeWrapper;
.super Ljava/lang/Object;
.source "InputController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeUinput(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeCloseUinput(J)V

    return-void
.end method

.method public openUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public writeButtonEvent(JIIJ)Z
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public writeDpadKeyEvent(JIIJ)Z
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteDpadKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public writeKeyEvent(JIIJ)Z
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public writeRelativeEvent(JFFJ)Z
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRelativeEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public writeScrollEvent(JFFJ)Z
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteScrollEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public writeTouchEvent(JIIIFFFFJ)Z
    .locals 0

    invoke-static/range {p1 .. p11}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z

    move-result p0

    return p0
.end method
