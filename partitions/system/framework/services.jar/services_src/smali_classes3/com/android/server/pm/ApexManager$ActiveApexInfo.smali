.class public Lcom/android/server/pm/ApexManager$ActiveApexInfo;
.super Ljava/lang/Object;
.source "ApexManager.java"


# instance fields
.field public final activeApexChanged:Z

.field public final apexDirectory:Ljava/io/File;

.field public final apexFile:Ljava/io/File;

.field public final apexModuleName:Ljava/lang/String;

.field public final isFactory:Z

.field public final preInstalledApexPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/apex/ApexInfo;)V
    .locals 7

    .line 142
    iget-object v1, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v0, p1, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p1, Landroid/apex/ApexInfo;->isFactory:Z

    new-instance v5, Ljava/io/File;

    iget-object v0, p1, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p1, Landroid/apex/ApexInfo;->activeApexChanged:Z

    move-object v0, p0

    .line 142
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLjava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 127
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLjava/io/File;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/ApexManager$ActiveApexInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLjava/io/File;Z)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    .line 135
    iput-object p3, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    .line 136
    iput-boolean p4, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->isFactory:Z

    .line 137
    iput-object p5, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexFile:Ljava/io/File;

    .line 138
    iput-boolean p6, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    return-void
.end method
