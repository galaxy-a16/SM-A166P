.class public abstract Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;
.super Ljava/lang/Object;
.source "MARsTrigger.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/MARsTrigger;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/MARsTrigger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 102
    new-instance v0, Lcom/android/server/am/MARsTrigger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsTrigger;-><init>(Lcom/android/server/am/MARsTrigger-IA;)V

    sput-object v0, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    return-void
.end method
