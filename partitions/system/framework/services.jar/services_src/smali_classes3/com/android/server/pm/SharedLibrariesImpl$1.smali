.class public Lcom/android/server/pm/SharedLibrariesImpl$1;
.super Lcom/android/server/utils/Watcher;
.source "SharedLibrariesImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/SharedLibrariesImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/SharedLibrariesImpl;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/server/pm/SharedLibrariesImpl$1;->this$0:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/server/pm/SharedLibrariesImpl$1;->this$0:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SharedLibrariesImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method
