.class public abstract Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;
.super Ljava/lang/Object;
.source "PersonalizedMemoryManager.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    invoke-direct {v0}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;-><init>()V

    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    return-void
.end method
