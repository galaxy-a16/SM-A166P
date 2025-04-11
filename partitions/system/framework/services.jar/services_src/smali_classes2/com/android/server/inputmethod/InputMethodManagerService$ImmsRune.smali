.class public abstract Lcom/android/server/inputmethod/InputMethodManagerService$ImmsRune;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# static fields
.field public static final SUPPORT_SKBD_MULTI_MODAL_CONCEPT:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 8969
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->ONE_UI_6_1:Z

    sput-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsRune;->SUPPORT_SKBD_MULTI_MODAL_CONCEPT:Z

    return-void
.end method
