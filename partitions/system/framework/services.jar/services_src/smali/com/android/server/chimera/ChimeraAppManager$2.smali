.class Lcom/android/server/chimera/ChimeraAppManager$2;
.super Ljava/util/ArrayList;
.source "ChimeraAppManager.java"


# instance fields
.field final synthetic this$0:Lcom/android/server/chimera/ChimeraAppManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ChimeraAppManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppManager$2;->this$0:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "com.android.systemui"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.google.android.providers.media.module"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
