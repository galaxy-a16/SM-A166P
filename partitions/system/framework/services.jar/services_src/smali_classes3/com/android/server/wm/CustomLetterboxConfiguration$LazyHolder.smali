.class public abstract Lcom/android/server/wm/CustomLetterboxConfiguration$LazyHolder;
.super Ljava/lang/Object;
.source "CustomLetterboxConfiguration.java"


# static fields
.field public static final sInstance:Lcom/android/server/wm/CustomLetterboxConfiguration;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/wm/CustomLetterboxConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/CustomLetterboxConfiguration;-><init>(Lcom/android/server/wm/CustomLetterboxConfiguration-IA;)V

    sput-object v0, Lcom/android/server/wm/CustomLetterboxConfiguration$LazyHolder;->sInstance:Lcom/android/server/wm/CustomLetterboxConfiguration;

    return-void
.end method
