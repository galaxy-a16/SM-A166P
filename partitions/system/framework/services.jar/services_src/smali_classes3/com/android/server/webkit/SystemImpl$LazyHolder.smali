.class public abstract Lcom/android/server/webkit/SystemImpl$LazyHolder;
.super Ljava/lang/Object;
.source "SystemImpl.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/webkit/SystemImpl;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/webkit/SystemImpl;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/webkit/SystemImpl$LazyHolder;->INSTANCE:Lcom/android/server/webkit/SystemImpl;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/android/server/webkit/SystemImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/webkit/SystemImpl;-><init>(Lcom/android/server/webkit/SystemImpl-IA;)V

    sput-object v0, Lcom/android/server/webkit/SystemImpl$LazyHolder;->INSTANCE:Lcom/android/server/webkit/SystemImpl;

    return-void
.end method
