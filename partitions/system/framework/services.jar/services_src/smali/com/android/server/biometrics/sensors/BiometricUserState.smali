.class public abstract Lcom/android/server/biometrics/sensors/BiometricUserState;
.super Ljava/lang/Object;
.source "BiometricUserState.java"


# instance fields
.field public final mBiometrics:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mFile:Ljava/io/File;

.field public mInvalidationInProgress:Z

.field public final mWriteStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$nB4IwZonQ5xfUXeDNSa09Pk1J5c(Lcom/android/server/biometrics/sensors/BiometricUserState;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->doWriteStateInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricUserState;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    .line 121
    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getFileForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    .line 122
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mContext:Landroid/content/Context;

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->readStateSyncLocked()V

    .line 125
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 1

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->scheduleWriteStateLocked()V

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract doWriteState(Lcom/android/modules/utils/TypedXmlSerializer;)V
.end method

.method public final doWriteStateInternal()V
    .locals 7

    const-string v0, "authenticatorIdInvalidation_tag"

    .line 84
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 89
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    .line 91
    invoke-interface {v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 92
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 95
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "authenticatorIdInvalidation_attr"

    .line 96
    iget-boolean v6, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    invoke-interface {v4, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    invoke-virtual {p0, v4}, Lcom/android/server/biometrics/sensors/BiometricUserState;->doWriteState(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 102
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 103
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    :try_start_2
    const-string v3, "UserState"

    const-string v4, "Failed to write settings, restoring backup"

    .line 105
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 107
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p0

    .line 109
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 110
    throw p0
.end method

.method public getBiometrics()Ljava/util/List;
    .locals 1

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 176
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract getBiometricsTag()Ljava/lang/String;
.end method

.method public abstract getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end method

.method public final getFileForUser(ILjava/lang/String;)Ljava/io/File;
    .locals 0

    .line 205
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract getNameTemplateResource()I
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getNameTemplateResource()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->isUnique(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isInvalidationInProgress()Z
    .locals 1

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isUnique(Ljava/lang/String;)Z
    .locals 1

    .line 196
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 197
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public abstract parseBiometricsLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
.end method

.method public final parseStateLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 4

    .line 239
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 241
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 242
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 247
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->parseBiometricsLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_0

    :cond_3
    const-string v2, "authenticatorIdInvalidation_tag"

    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "authenticatorIdInvalidation_attr"

    .line 251
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final readStateSyncLocked()V
    .locals 5

    .line 215
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 226
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->parseStateLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 229
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing settings file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mFile:Ljava/io/File;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 233
    throw p0

    :catch_1
    const-string p0, "UserState"

    const-string v0, "No fingerprint state"

    .line 221
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeBiometric(I)V
    .locals 2

    .line 149
    monitor-enter p0

    const/4 v0, 0x0

    .line 150
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->scheduleWriteStateLocked()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public renameBiometric(ILjava/lang/CharSequence;)V
    .locals 2

    .line 161
    monitor-enter p0

    const/4 v0, 0x0

    .line 162
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 165
    invoke-virtual {p1, p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->setName(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->scheduleWriteStateLocked()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final scheduleWriteStateLocked()V
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInvalidationInProgress(Z)V
    .locals 0

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->scheduleWriteStateLocked()V

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
