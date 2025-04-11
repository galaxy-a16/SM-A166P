.class public final synthetic Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/app/LocaleManager;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Landroid/content/Context;Landroid/app/LocaleManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;->f$2:Landroid/app/LocaleManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;->f$0:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;->f$2:Landroid/app/LocaleManager;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer;->$r8$lambda$j29lJnTrAE1J-DB3HkXAtMHaoUw(Ljava/util/Set;Landroid/content/Context;Landroid/app/LocaleManager;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
