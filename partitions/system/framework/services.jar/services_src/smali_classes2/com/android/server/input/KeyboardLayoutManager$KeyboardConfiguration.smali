.class public Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;
.super Ljava/lang/Object;
.source "KeyboardLayoutManager.java"


# instance fields
.field public mConfiguredLayouts:Ljava/util/Set;

.field public mCurrentLayout:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mgetConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->getConfiguredLayouts()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentLayout(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->getCurrentLayout()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhasConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->hasConfiguredLayouts()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->setConfiguredLayouts(Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCurrentLayout(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->setCurrentLayout(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfiguredLayouts()Ljava/util/Set;
    .locals 0

    .line 1551
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mConfiguredLayouts:Ljava/util/Set;

    return-object p0
.end method

.method public final getCurrentLayout()Ljava/lang/String;
    .locals 0

    .line 1560
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mCurrentLayout:Ljava/lang/String;

    return-object p0
.end method

.method public final hasConfiguredLayouts()Z
    .locals 0

    .line 1546
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mConfiguredLayouts:Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setConfiguredLayouts(Ljava/util/Set;)V
    .locals 0

    .line 1555
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mConfiguredLayouts:Ljava/util/Set;

    return-void
.end method

.method public final setCurrentLayout(Ljava/lang/String;)V
    .locals 0

    .line 1564
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mCurrentLayout:Ljava/lang/String;

    return-void
.end method
