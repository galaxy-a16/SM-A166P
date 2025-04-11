.class public Lcom/android/server/am/mars/filter/filter/PredownloadFilter;
.super Ljava/lang/Object;
.source "PredownloadFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

.field public mTempAllowlist:Ljava/util/ArrayList;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/am/mars/filter/filter/PredownloadFilter;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetTempExempt(Lcom/android/server/am/mars/filter/filter/PredownloadFilter;ILjava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->setTempExempt(ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/PredownloadFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/PredownloadFilter;
    .locals 1

    .line 35
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 0

    .line 62
    new-instance p2, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;

    invoke-direct {p2, p0, p3, p1}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;-><init>(Lcom/android/server/am/mars/filter/filter/PredownloadFilter;ILjava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->TAG:Ljava/lang/String;

    const-string p1, "EXEMPT!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x1c

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->setContext(Landroid/content/Context;)V

    .line 49
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 50
    new-instance p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;-><init>(Lcom/android/server/am/mars/filter/filter/PredownloadFilter;)V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mReceiver:Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;

    .line 51
    invoke-virtual {p1}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$PredownloadRequestReceiver;->registerPredownloadRequestReceiver()V

    const-string/jumbo p0, "sys.config.mars.predl_filter.enabled"

    const-string p1, "1"

    .line 52
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final setTempExempt(ILjava/lang/String;Z)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreDownload temp exempt: u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", exempt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;-><init>(Lcom/android/server/am/mars/filter/filter/PredownloadFilter;ILjava/lang/String;)V

    if-eqz p3, :cond_0

    .line 74
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 75
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter;->mTempAllowlist:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
