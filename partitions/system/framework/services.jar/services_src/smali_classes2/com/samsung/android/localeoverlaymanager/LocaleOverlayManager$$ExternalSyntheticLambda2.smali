.class public final synthetic Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/LocaleManager;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/app/LocaleManager;Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/LocaleManager;

    iput-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;->f$0:Landroid/app/LocaleManager;

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->$r8$lambda$gvR1h9ngTJYarjUy8zHmP8nzsoE(Landroid/app/LocaleManager;Ljava/util/Set;Ljava/util/List;Landroid/content/om/OverlayInfo;)V

    return-void
.end method
