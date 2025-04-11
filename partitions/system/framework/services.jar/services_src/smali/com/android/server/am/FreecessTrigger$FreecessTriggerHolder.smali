.class public abstract Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;
.super Ljava/lang/Object;
.source "FreecessTrigger.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/FreecessTrigger;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/FreecessTrigger;
    .locals 1

    sget-object v0, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->INSTANCE:Lcom/android/server/am/FreecessTrigger;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/FreecessTrigger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/FreecessTrigger;-><init>(Lcom/android/server/am/FreecessTrigger-IA;)V

    sput-object v0, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->INSTANCE:Lcom/android/server/am/FreecessTrigger;

    return-void
.end method
