.class public abstract Lcom/android/server/am/MARsHandler$MARsHandlerHolder;
.super Ljava/lang/Object;
.source "MARsHandler.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/MARsHandler;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/MARsHandler;
    .locals 1

    sget-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/MARsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsHandler;-><init>(Lcom/android/server/am/MARsHandler-IA;)V

    sput-object v0, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    return-void
.end method
