.class public abstract Lcom/android/server/am/FreecessController$FreecessControllerHolder;
.super Ljava/lang/Object;
.source "FreecessController.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/FreecessController;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/FreecessController;
    .locals 1

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/FreecessController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/FreecessController;-><init>(Lcom/android/server/am/FreecessController-IA;)V

    sput-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    return-void
.end method
