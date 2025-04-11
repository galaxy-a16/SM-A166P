.class public abstract Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;
.super Ljava/lang/Object;
.source "SafetySystemService.java"


# static fields
.field public static final sSingleton:Lcom/samsung/android/server/util/SafetySystemService$Manager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/samsung/android/server/util/SafetySystemService$Manager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/util/SafetySystemService$Manager;-><init>(Lcom/samsung/android/server/util/SafetySystemService$Manager-IA;)V

    sput-object v0, Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;->sSingleton:Lcom/samsung/android/server/util/SafetySystemService$Manager;

    return-void
.end method
