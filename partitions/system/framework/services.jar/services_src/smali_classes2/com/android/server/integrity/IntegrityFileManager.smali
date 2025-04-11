.class public Lcom/android/server/integrity/IntegrityFileManager;
.super Ljava/lang/Object;
.source "IntegrityFileManager.java"


# static fields
.field public static final RULES_LOCK:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/integrity/IntegrityFileManager;


# instance fields
.field public final mDataDir:Ljava/io/File;

.field public mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;

.field public mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

.field public final mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

.field public final mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

.field public final mRulesDir:Ljava/io/File;

.field public final mStagingDir:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 80
    new-instance v0, Lcom/android/server/integrity/parser/RuleBinaryParser;

    invoke-direct {v0}, Lcom/android/server/integrity/parser/RuleBinaryParser;-><init>()V

    new-instance v1, Lcom/android/server/integrity/serializer/RuleBinarySerializer;

    invoke-direct {v1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;-><init>()V

    .line 83
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    .line 80
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/integrity/IntegrityFileManager;-><init>(Lcom/android/server/integrity/parser/RuleParser;Lcom/android/server/integrity/serializer/RuleSerializer;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/integrity/parser/RuleParser;Lcom/android/server/integrity/serializer/RuleSerializer;Ljava/io/File;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

    .line 89
    iput-object p2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

    .line 90
    iput-object p3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mDataDir:Ljava/io/File;

    .line 92
    new-instance p1, Ljava/io/File;

    const-string p2, "integrity_rules"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 93
    new-instance p2, Ljava/io/File;

    const-string v0, "integrity_staging"

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 95
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    const-string p3, "IntegrityFileManager"

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, "Error creating staging and rules directory"

    .line 96
    invoke-static {p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    new-instance p2, Ljava/io/File;

    const-string/jumbo v0, "metadata"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    invoke-static {p1}, Lcom/android/server/integrity/parser/RuleMetadataParser;->parse(Ljava/io/InputStream;)Lcom/android/server/integrity/model/RuleMetadata;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 102
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Error reading metadata file."

    .line 105
    invoke-static {p3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/integrity/IntegrityFileManager;->updateRuleIndexingController()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/integrity/IntegrityFileManager;
    .locals 2

    const-class v0, Lcom/android/server/integrity/IntegrityFileManager;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/android/server/integrity/IntegrityFileManager;

    invoke-direct {v1}, Lcom/android/server/integrity/IntegrityFileManager;-><init>()V

    sput-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;

    .line 76
    :cond_0
    sget-object v1, Lcom/android/server/integrity/IntegrityFileManager;->sInstance:Lcom/android/server/integrity/IntegrityFileManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public initialized()Z
    .locals 3

    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v2, "rules"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v2, "metadata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string v1, "indexing"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public readMetadata()Lcom/android/server/integrity/model/RuleMetadata;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    return-object p0
.end method

.method public readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;
    .locals 4

    .line 155
    sget-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 160
    :try_start_1
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;

    .line 161
    invoke-virtual {v2, p1}, Lcom/android/server/integrity/parser/RuleIndexingController;->identifyRulesToEvaluate(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "IntegrityFileManager"

    const-string v3, "Error identifying the rule indexes. Trying unindexed."

    .line 163
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_0
    :goto_0
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string/jumbo v3, "rules"

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleParser:Lcom/android/server/integrity/parser/RuleParser;

    .line 170
    invoke-static {p1}, Lcom/android/server/integrity/parser/RandomAccessObject;->ofFile(Ljava/io/File;)Lcom/android/server/integrity/parser/RandomAccessObject;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Lcom/android/server/integrity/parser/RuleParser;->parse(Lcom/android/server/integrity/parser/RandomAccessObject;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 171
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 172
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final switchStagingRulesDir()V
    .locals 4

    .line 182
    sget-object v0, Lcom/android/server/integrity/IntegrityFileManager;->RULES_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mDataDir:Ljava/io/File;

    const-string/jumbo v3, "temp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    .line 186
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    .line 187
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 192
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_0
    monitor-exit v0

    return-void

    .line 188
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Error switching staging/rules directory"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateRuleIndexingController()V
    .locals 3

    .line 198
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRulesDir:Ljava/io/File;

    const-string v2, "indexing"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :try_start_1
    new-instance v0, Lcom/android/server/integrity/parser/RuleIndexingController;

    invoke-direct {v0, v1}, Lcom/android/server/integrity/parser/RuleIndexingController;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleIndexingController:Lcom/android/server/integrity/parser/RuleIndexingController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 200
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "IntegrityFileManager"

    const-string v1, "Error parsing the rule indexing file."

    .line 203
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public final writeMetadata(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 210
    new-instance v0, Lcom/android/server/integrity/model/RuleMetadata;

    invoke-direct {v0, p2, p3}, Lcom/android/server/integrity/model/RuleMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    .line 212
    new-instance p2, Ljava/io/File;

    const-string/jumbo p3, "metadata"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    :try_start_0
    iget-object p0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleMetadataCache:Lcom/android/server/integrity/model/RuleMetadata;

    invoke-static {p0, p1}, Lcom/android/server/integrity/serializer/RuleMetadataSerializer;->serialize(Lcom/android/server/integrity/model/RuleMetadata;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 214
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public writeRules(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/integrity/IntegrityFileManager;->writeMetadata(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "IntegrityFileManager"

    const-string v0, "Error writing metadata."

    .line 129
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    const-string/jumbo v1, "rules"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 135
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/integrity/IntegrityFileManager;->mStagingDir:Ljava/io/File;

    const-string v2, "indexing"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 137
    :try_start_2
    iget-object v0, p0, Lcom/android/server/integrity/IntegrityFileManager;->mRuleSerializer:Lcom/android/server/integrity/serializer/RuleSerializer;

    .line 138
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    .line 137
    invoke-interface {v0, p3, v1, p1, p2}, Lcom/android/server/integrity/serializer/RuleSerializer;->serialize(Ljava/util/List;Ljava/util/Optional;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/integrity/IntegrityFileManager;->switchStagingRulesDir()V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/integrity/IntegrityFileManager;->updateRuleIndexingController()V

    return-void

    :catchall_0
    move-exception p0

    .line 133
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method
