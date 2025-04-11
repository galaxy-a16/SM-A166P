.class public abstract Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

.field public static isinitClass:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 170
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/DynamicHiddenApp;-><init>(Lcom/android/server/am/DynamicHiddenApp-IA;)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    const/4 v0, 0x0

    .line 171
    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->isinitClass:Z

    return-void
.end method
